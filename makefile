# Makefile to build all variants with Free Pascal 3.2.x
FPC      ?= fpc
COMMON   ?= 
OBJFPC   ?= -Mobjfpc
ADVREC   ?= -Madvancedrecords
ISOFLAGS ?= -Miso
TPFLAGS  ?= -Mtp

.PHONY: all clean

all: test_advrecoop test_objfpcoop test_tpoop test_isooop test_advrec_shapes test_objfpc_classes_shapes test_tpoop_shapes test_iso_shapes


# Old vector examples
test_advrecoop: vectors/test_advrecoop.pas vectors/advrecoop.pas
	$(FPC) $(COMMON) $(OBJFPC) $(ADVREC) $<

test_objfpcoop: vectors/test_objfpcoop.pas vectors/objfpcoop.pas
	$(FPC) $(COMMON) $(OBJFPC) $<

test_tpoop: vectors/test_tpoop.pas vectors/tpoop.pas
	$(FPC) $(COMMON) $(TPFLAGS) $<

test_isooop: vectors/test_isooop.pas
	$(FPC) $(COMMON) $(ISOFLAGS) $<

# Shapes variants
test_advrec_shapes: shapes/test_advrec_shapes.pas
	$(FPC) $(COMMON) $(OBJFPC) $(ADVREC) shapes/advrec_shapes.pas
	$(FPC) $(COMMON) $(OBJFPC) $(ADVREC) $<

test_objfpc_classes_shapes: shapes/test_objfpc_classes_shapes.pas shapes/objfpc_classes_shapes.pas
	$(FPC) $(COMMON) $(OBJFPC) $<

test_tpoop_shapes: shapes/test_tpoop_shapes.pas shapes/tpoop_shapes.pas
	$(FPC) $(COMMON) $(TPFLAGS) $<

test_iso_shapes: shapes/test_iso_shapes.pas
	$(FPC) $(COMMON) $(ISOFLAGS) $<

clean:
	rm -f shapes/*.o shapes/*.ppu
	rm -f vectors/*.o vectors/*.ppu
