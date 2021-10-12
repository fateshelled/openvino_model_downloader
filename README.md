# openvino_model_downloader

OpenVINOのモデルをダウンロードし、IR formatに変換します。

## 使用方法
```bash
git clone https://github.com/fateshelled/openvino_model_downloader

# DOWNLOAD_DIRでダウンロード先のディレクトリを指定します。
make run DOWNLOAD_DIR=./models
```

## ダウンロードするモデルを指定する場合
`docker/download_and_optimize.sh`を編集します。

```bash
# all model download and convert to IR format.
python3 downloader.py --all --output_dir /workspace/models -j8
python3 converter.py --all -d /workspace/models -j8

# Example for specified model
python3 downloader.py --name yolo-v4-tiny-tf --output_dir /workspace/models
python3 converter.py --name yolo-v4-tiny-tf -d /workspace/models
```
