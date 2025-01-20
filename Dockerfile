# ベースイメージ
FROM python:3.9-slim

# 必要なツールのインストール
RUN apt-get update && apt-get install -y \
    git \
    && apt-get clean

# 作業ディレクトリの設定
WORKDIR /app

# PyTorch と依存関係のインストール
RUN pip install --no-cache-dir \
    --index-url https://download.pytorch.org/whl/cpu \
    torch==2.0.1+cpu torchvision==0.15.2+cpu && \
    pip install --no-cache-dir ftfy==6.1.1 regex tqdm scikit-learn

# CLIP のインストール
RUN pip install git+https://github.com/openai/CLIP.git

# スクリプトとテスト画像をコピー
COPY . /app

CMD ["python", "app.py"]
