COPTS   = -I$(TOP)/src  -c -O2 -Wall

DEVBIN = /system/drivers/appserver/video
OBJS =	trident.o

OBJDIR	:= objs
OBJS	:= $(addprefix $(OBJDIR)/,$(OBJS))


#
#	rules
#

$(OBJDIR)/%.o : %.c
	$(CC) $(COPTS) $< -o $@

$(OBJDIR)/%.o : %.cpp
	$(CC) $(COPTS) $< -o $@


all :	objs $(OBJDIR)/trident

objs:
	mkdir objs

$(OBJDIR)/trident: $(OBJS)
	gcc -plugin $(OBJS) -o $(OBJDIR)/trident -latheos -lstdc++

install: $(OBJDIR)/trident
	cp -f $(OBJDIR)/trident $(DEVBIN)/trident
clean:
	-rm $(OBJS) $(OBJDIR)/trident
