if [[ $1 =~ \.tex$ ]]; then
	ptex2pdf.exe -l $1
	if [[ $? -ne 0 ]]; then
		echo "Error: ptex2pdf.exe failed on first run"
		exit 1
	fi

	#一回目のコンパイルが完了したら再度書き出す
	ptex2pdf.exe -l -interaction batchmode $1
	if [[ $? -ne 0 ]]; then
		echo "Error: ptex2pdf.exe failed on second run"
		exit 1
	fi
fi
