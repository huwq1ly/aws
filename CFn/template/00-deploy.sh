#!/bin/bash

# deployオプションをつけないとチェンジセットの作成のみが実行される
CHANGESET_OPTION="--no-execute-changeset"

if [ $# = 1 ] && [ $1 = "deploy" ]; then
  echo "deploy mode"
  CHANGESET_OPTION=""
fi

# テンプレート名とスタック名
CFN_TEMPLATE=sample.yml
CFN_STACK_NAME=''

# テンプレートの実行
aws cloudformation deploy --stack-name ${CFN_STACK_NAME} --template-file ${CFN_TEMPLATE} ${CHANGESET_OPTION} 