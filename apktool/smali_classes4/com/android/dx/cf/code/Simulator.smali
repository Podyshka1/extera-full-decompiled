.class public Lcom/android/dx/cf/code/Simulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/cf/code/Simulator$SimVisitor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOCAL_MISMATCH_ERROR:Ljava/lang/String; = "This is symptomatic of .class transformation tools that ignore local variable information."


# instance fields
.field private final code:Lcom/android/dx/cf/code/BytecodeArray;

.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private final localVariables:Lcom/android/dx/cf/code/LocalVariableList;

.field private final machine:Lcom/android/dx/cf/code/Machine;

.field private method:Lcom/android/dx/cf/code/ConcreteMethod;

.field private final visitor:Lcom/android/dx/cf/code/Simulator$SimVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/dx/cf/code/Machine;Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/dex/DexOptions;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 90
    iput-object p1, p0, Lcom/android/dx/cf/code/Simulator;->machine:Lcom/android/dx/cf/code/Machine;

    .line 91
    invoke-virtual {p2}, Lcom/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/cf/code/Simulator;->code:Lcom/android/dx/cf/code/BytecodeArray;

    .line 92
    iput-object p2, p0, Lcom/android/dx/cf/code/Simulator;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    .line 93
    invoke-virtual {p2}, Lcom/android/dx/cf/code/ConcreteMethod;->getLocalVariables()Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/cf/code/Simulator;->localVariables:Lcom/android/dx/cf/code/LocalVariableList;

    .line 94
    new-instance p1, Lcom/android/dx/cf/code/Simulator$SimVisitor;

    invoke-direct {p1, p0}, Lcom/android/dx/cf/code/Simulator$SimVisitor;-><init>(Lcom/android/dx/cf/code/Simulator;)V

    iput-object p1, p0, Lcom/android/dx/cf/code/Simulator;->visitor:Lcom/android/dx/cf/code/Simulator$SimVisitor;

    .line 95
    iput-object p3, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 98
    invoke-virtual {p2}, Lcom/android/dx/cf/code/ConcreteMethod;->isDefaultOrStaticInterfaceMethod()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0, p2}, Lcom/android/dx/cf/code/Simulator;->checkInterfaceMethodDeclaration(Lcom/android/dx/cf/code/ConcreteMethod;)V

    :cond_0
    return-void

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dexOptions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "machine == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/dx/cf/code/Simulator;)Lcom/android/dx/cf/code/Machine;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/dx/cf/code/Simulator;->machine:Lcom/android/dx/cf/code/Machine;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/dx/cf/code/SimException;
    .locals 1

    .line 43
    invoke-static {}, Lcom/android/dx/cf/code/Simulator;->illegalTos()Lcom/android/dx/cf/code/SimException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/cf/code/Simulator;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/android/dx/cf/code/Simulator;->requiredArrayTypeFor(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dx/cf/code/Simulator;)Lcom/android/dx/cf/code/LocalVariableList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/dx/cf/code/Simulator;->localVariables:Lcom/android/dx/cf/code/LocalVariableList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/dx/cf/code/Simulator;ILcom/android/dx/rop/cst/CstMethodRef;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/dx/cf/code/Simulator;->checkInvokeInterfaceSupported(ILcom/android/dx/rop/cst/CstMethodRef;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dx/cf/code/Simulator;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->checkInvokeSignaturePolymorphic(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dx/cf/code/Simulator;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->checkInvokeDynamicSupported(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dx/cf/code/Simulator;Lcom/android/dx/rop/cst/Constant;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->checkConstMethodHandleSupported(Lcom/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method private checkConstMethodHandleSupported(Lcom/android/dx/rop/cst/Constant;)V
    .locals 4

    .line 838
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget v1, v1, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 842
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/4 p1, 0x2

    aput-object v1, v2, p1

    .line 839
    const-string p1, "invalid constant type %s requires --min-sdk-version >= %d (currently %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkInterfaceMethodDeclaration(Lcom/android/dx/cf/code/ConcreteMethod;)V
    .locals 6

    .line 922
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    invoke-virtual {p1}, Lcom/android/dx/cf/code/ConcreteMethod;->isStaticMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "static"

    goto :goto_0

    :cond_0
    const-string v0, "default"

    .line 928
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget v2, v2, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 929
    invoke-virtual {p1}, Lcom/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p1, v4, v0

    .line 924
    const-string p1, "defining a %s interface method requires --min-sdk-version >= %d (currently %d) for interface methods: %s.%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 930
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->warn(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private checkInvokeDynamicSupported(I)V
    .locals 4

    .line 847
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget v1, v1, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/4 p1, 0x2

    aput-object v1, v2, p1

    .line 848
    const-string p1, "invalid opcode %02x - invokedynamic requires --min-sdk-version >= %d (currently %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkInvokeInterfaceSupported(ILcom/android/dx/rop/cst/CstMethodRef;)V
    .locals 9

    const/16 v0, 0x18

    .line 908
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb9

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    iget-object v2, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    invoke-virtual {v2, v0}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget-boolean v2, v0, Lcom/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    const/16 v3, 0xb8

    if-ne p1, v3, :cond_2

    const/16 v4, 0x15

    .line 891
    invoke-virtual {v0, v4}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    and-int/2addr v2, v0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 899
    const-string p1, "static"

    goto :goto_1

    :cond_3
    const-string p1, "default"

    :goto_1
    const/4 v0, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-eqz v2, :cond_4

    .line 907
    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstMemberRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object p2

    .line 908
    iget-object v8, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget v8, v8, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object v2, v7, v5

    aput-object p2, v7, v4

    aput-object v1, v7, v3

    aput-object v8, v7, v0

    .line 904
    const-string p1, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (experimental at current API level %d)"

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->warn(Ljava/lang/String;)V

    return-void

    .line 915
    :cond_4
    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstMemberRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object p2

    .line 916
    iget-object v8, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget v8, v8, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object v2, v7, v5

    aput-object p2, v7, v4

    aput-object v1, v7, v3

    aput-object v8, v7, v0

    .line 912
    const-string p1, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (blocked at current API level %d)"

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    return-void
.end method

.method private checkInvokeSignaturePolymorphic(I)V
    .locals 3

    .line 935
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget v0, v0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    .line 936
    const-string p1, "invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xb6

    if-eq p1, v0, :cond_1

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported signature polymorphic invocation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/cf/code/ByteOps;->opName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Simulator;->fail(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .locals 4

    .line 945
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    .line 946
    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 945
    const-string p1, "ERROR in %s.%s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 947
    new-instance v0, Lcom/android/dx/cf/code/SimException;

    invoke-direct {v0, p1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static illegalTos()Lcom/android/dx/cf/code/SimException;
    .locals 2

    .line 145
    new-instance v0, Lcom/android/dx/cf/code/SimException;

    const-string v1, "stack mismatch: illegal top-of-stack for opcode"

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static requiredArrayTypeFor(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Type;
    .locals 1

    .line 190
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 196
    :cond_1
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_2

    .line 197
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 202
    :cond_2
    sget-object v0, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_3

    return-object v0

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0
.end method

.method private warn(Ljava/lang/String;)V
    .locals 4

    .line 951
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    .line 952
    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 951
    const-string p1, "WARNING in %s.%s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 953
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget-object v0, v0, Lcom/android/dx/dex/DexOptions;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public simulate(ILcom/android/dx/cf/code/Frame;)I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->visitor:Lcom/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v0, p2}, Lcom/android/dx/cf/code/Simulator$SimVisitor;->setFrame(Lcom/android/dx/cf/code/Frame;)V

    .line 137
    iget-object p2, p0, Lcom/android/dx/cf/code/Simulator;->code:Lcom/android/dx/cf/code/BytecodeArray;

    iget-object v0, p0, Lcom/android/dx/cf/code/Simulator;->visitor:Lcom/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {p2, p1, v0}, Lcom/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result p1

    return p1
.end method

.method public simulate(Lcom/android/dx/cf/code/ByteBlock;Lcom/android/dx/cf/code/Frame;)V
    .locals 3

    .line 111
    invoke-virtual {p1}, Lcom/android/dx/cf/code/ByteBlock;->getEnd()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator;->visitor:Lcom/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v1, p2}, Lcom/android/dx/cf/code/Simulator$SimVisitor;->setFrame(Lcom/android/dx/cf/code/Frame;)V

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/cf/code/ByteBlock;->getStart()I

    move-result p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/dx/cf/code/Simulator;->code:Lcom/android/dx/cf/code/BytecodeArray;

    iget-object v2, p0, Lcom/android/dx/cf/code/Simulator;->visitor:Lcom/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v1, p1, v2}, Lcom/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/android/dx/cf/code/Simulator;->visitor:Lcom/android/dx/cf/code/Simulator$SimVisitor;

    invoke-virtual {v2, p1}, Lcom/android/dx/cf/code/Simulator$SimVisitor;->setPreviousOffset(I)V
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-void

    .line 122
    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/dx/cf/code/Frame;->annotate(Lcom/android/dex/util/ExceptionWithContext;)V

    .line 123
    throw p1
.end method
