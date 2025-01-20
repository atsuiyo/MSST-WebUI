FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-runtime

#uv install
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# workdir set
WORKDIR /app

# system dependency install
RUN apt update && \
    apt install -y build-essential libx11-6 && \
    rm -rf /var/lib/apt/lists/*

# python dependency install
COPY requirements.txt .
COPY tools/webUI_for_clouds/librosa-0.9.2-py3-none-any.whl ./tools/webUI_for_clouds/librosa-0.9.2-py3-none-any.whl
RUN uv pip install --no-cache-dir -r requirements.txt --only-binary=samplerate --system \
&& pip uninstall librosa -y  && pip install tools/webUI_for_clouds/librosa-0.9.2-py3-none-any.whl  

#install file clear
RUN rm requirements.txt ./tools/webUI_for_clouds/librosa-0.9.2-py3-none-any.whl

# run container 
# CMD ["python webUI.py", "--server_name=0.0.0.0", "--server_port=7860"]