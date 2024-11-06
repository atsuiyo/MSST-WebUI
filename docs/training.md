# Train Music Source Separate Model

Use `train.py`. If you use multi-GPUs, try to use `train_accelerate.py`.

- Refer to [dataset_types.md](dataset_types.md) for details about dataset types. 
- Refer to [arugments.md](arguments.md) for details about arguments. 
- Refer to [bs_roformer_info.md](bs_roformer_info.md) for details about `bs_roformer` model.

```bash
usage: train_accelerate.py [-h] [--model_type MODEL_TYPE] [--config_path CONFIG_PATH] [--start_check_point START_CHECK_POINT] [--results_path RESULTS_PATH]
                           [--data_path DATA_PATH [DATA_PATH ...]] [--dataset_type DATASET_TYPE] [--valid_path VALID_PATH [VALID_PATH ...]] [--num_workers NUM_WORKERS]
                           [--pin_memory] [--seed SEED] [--device_ids DEVICE_IDS [DEVICE_IDS ...]] [--use_multistft_loss] [--use_mse_loss] [--use_l1_loss] [--pre_valid]

options:
  -h, --help                                show this help message and exit
  --model_type MODEL_TYPE                   One of mdx23c, htdemucs, segm_models, mel_band_roformer, bs_roformer, swin_upernet, bandit
  --config_path CONFIG_PATH                 path to config file
  --start_check_point START_CHECK_POINT     Initial checkpoint to start training
  --results_path RESULTS_PATH               path to folder where results will be stored (weights, metadata)
  --data_path DATA_PATH [DATA_PATH ...]     Dataset data paths. You can provide several folders.
  --dataset_type DATASET_TYPE               Dataset type. Must be one of: 1, 2, 3 or 4. Details here: https://github.com/ZFTurbo/Music-Source-Separation-Training/blob/main/docs/dataset_types.md
  --valid_path VALID_PATH [VALID_PATH ...]  validation data paths. You can provide several folders.
  --num_workers NUM_WORKERS                 dataloader num_workers
  --pin_memory                              dataloader pin_memory
  --seed SEED                               random seed
  --device_ids DEVICE_IDS [DEVICE_IDS ...]  list of gpu ids
  --use_multistft_loss                      Use MultiSTFT Loss (from auraloss package)
  --use_mse_loss                            Use default MSE loss
  --use_l1_loss                             Use L1 loss
  --pre_valid                               Run validation before training
```