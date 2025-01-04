from qfluentwidgets import FluentWindow, NavigationItemPosition
from qfluentwidgets import FluentIcon as FIF
from ComfyUI.DownloadManager.interface.download_interface import DownloadInterface
from ComfyUI.DownloadManager.interface.manager_interface import ManagerInterface
from ComfyUI.DownloadManager.interface.settings_interface import SettingsInterface


class DownloadManager(FluentWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setupUI()

    def setupUI(self):
        download_interface = DownloadInterface(self)
        manager_interface = ManagerInterface(self)
        settings_interface = SettingsInterface(self)
        self.addSubInterface(download_interface, FIF.DOWNLOAD, "Download Center")
        self.addSubInterface(manager_interface, FIF.TAG, "Manager")
        self.addSubInterface(settings_interface, FIF.SETTING, "Settings", NavigationItemPosition.BOTTOM)
        self.resize(900, 600)