#包含路径
VPATH = src:Output:inc:lib:lib/src:lib/inc
 
#定义输出目录，源文件目录，包含头文件目录
OutputPath 	= ./Output
SrcPath		= ./src
LibPath		= ./lib/src
IncPath		= -I ./inc -I ./lib -I ./lib/inc
 
#输出文件
target = stm8_sdcc.hex
object = stm8_sdcc.ihx
 
#所有rel文件
rel = $(patsubst %.c, $(OutputPath)/%.rel, $(notdir $(wildcard $(SrcPath)/*.c $(LibPath)/*.c)))
 
#设置编译器和编译选项
CC = sdcc
HEX = packihx
CFLAGS = -mstm8 -D STM8L15X_MD $(IncPath) -o $(OutputPath)/ -c
LDLAGS = -mstm8 $(rel) -o
 
#ihx文件输出hex文件
$(target): $(object)
	$(HEX) $(OutputPath)/$(object) > $(OutputPath)/$(target)
 
#连接rel文件输出ihx文件
$(object): $(rel)
	$(CC) $(LDLAGS) $(OutputPath)/$(object)
 
#编译C文件到rel文件
$(OutputPath)/%.rel:%.c
	$(CC) $(CFLAGS) $<
 
.PHONY:
#清空输出目录
clean:
	del /Q .\Output\
 
#使用STVP_CmdLine烧录hex文件
STVPCFG = -BoardName=ST-LINK -Tool_ID=0 -ProgMode=SWIM -Device=STM8L15xK4 -progress -verif
down:
	STVP_CmdLine $(STVPCFG) -FileProg=$(OutputPath)/$(target)

app: $(rel)
	$(CC) -mstm8 --code-loc 0x8200 $(rel) -o $(OutputPath)/$(object)
	$(HEX) $(OutputPath)/$(object) > $(OutputPath)/$(target)