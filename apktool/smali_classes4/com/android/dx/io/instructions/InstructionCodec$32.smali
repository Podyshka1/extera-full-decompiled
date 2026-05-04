.class final enum Lcom/android/dx/io/instructions/InstructionCodec$32;
.super Lcom/android/dx/io/instructions/InstructionCodec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/io/instructions/InstructionCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 671
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 9

    .line 675
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    move-result v2

    const/16 v0, 0xfa

    if-ne v2, v0, :cond_1

    .line 681
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$300(I)I

    move-result v0

    .line 682
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$400(I)I

    move-result p1

    .line 683
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v3

    .line 684
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v1

    .line 685
    invoke-static {v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1700(I)I

    move-result v4

    .line 686
    invoke-static {v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1800(I)I

    move-result v5

    .line 687
    invoke-static {v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$300(I)I

    move-result v6

    .line 688
    invoke-static {v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$400(I)I

    move-result v1

    .line 689
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result p2

    move v7, v4

    .line 690
    invoke-static {v2}, Lcom/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/android/dx/io/IndexType;

    move-result-object v4

    const/4 v8, 0x1

    if-lt p1, v8, :cond_0

    const/4 v8, 0x5

    if-gt p1, v8, :cond_0

    .line 695
    filled-new-array {v7, v5, v6, v1, v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    .line 696
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v6

    .line 698
    new-instance v0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;I[I)V

    return-object v0

    .line 693
    :cond_0
    new-instance p2, Lcom/android/dex/DexException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus registerCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 679
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 6

    .line 704
    check-cast p1, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    .line 706
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    .line 707
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getG()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getRegisterCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec;->access$500(II)I

    move-result v1

    .line 706
    invoke-static {v0, v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    move-result v0

    .line 708
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getIndexUnit()S

    move-result v1

    .line 709
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getC()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getD()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getE()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getF()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1900(IIII)S

    move-result v2

    .line 710
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getProtoIndex()S

    move-result p1

    .line 706
    invoke-interface {p2, v0, v1, v2, p1}, Lcom/android/dx/io/instructions/CodeOutput;->write(SSSS)V

    return-void
.end method
