#!/bin/bash

input_folder="$1"  # 첫 번째 인자는 입력 폴더 경로
output_folder="$2"  # 두 번째 인자는 출력 폴더 경로

echo "입력 폴더: $input_folder"
echo "출력 폴더: $output_folder"

find "$input_folder" -name '*.m4a' -exec sh -c '
input_folder="$0"
output_folder="$1"
for file do
    #echo "처리 중인 파일: $file" # 디버깅 메시지
    #echo "입력 폴더: $input_folder" # 디버깅 메시지
    #echo "출력 폴더: $output_folder" # 디버깅 메시지

    # 입력 폴더 경로를 출력 폴더 경로로 변경하고 확장자를 .mp3로 변경
    output_file="${file/$input_folder/$output_folder}"
    output_file="${output_file%.m4a}.mp3"

    #echo "변환 후 파일: $output_file" # 디버깅 메시지

    # 출력 디렉토리가 없으면 생성
    mkdir -p "$(dirname "$output_file")"

    # 파일 변환
    echo "ffmpeg -i \"$file\" -ab 320k \"$output_file\"" # 디버깅 메시지
    ffmpeg -i "$file" -ab 320k "$output_file"
done
' "$input_folder" "$output_folder" {} +
