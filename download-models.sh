pip3 install googledrivedownloader

python3 -c "from google_drive_downloader import GoogleDriveDownloader as gdd; \
gdd.download_file_from_google_drive(file_id='1vulLmtVLD9PydSEXPX_k44zNhAi4Hrt_', dest_path='isp/ISP_CNN.pth'); \
gdd.download_file_from_google_drive(file_id='1DAcEwLeMajT0hRYrmME3BdLHLsj74gFb', dest_path='predenoising/PreDenoising.pth');\
gdd.download_file_from_google_drive(file_id='11LoKrpq55Kopwzu-mVvG7L1sEclJpN1t', dest_path='model/pretrain.pth'); \
gdd.download_file_from_google_drive(file_id='1Uwk-3W5_9TbBsp8io_nRQ0mwmEvwj9av', dest_path='model/finetune.pth') "
