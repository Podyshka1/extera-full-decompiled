.class public Lorg/mvel2/asm/signature/SignatureReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final signatureValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/mvel2/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    return-void
.end method

.method private static parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x46

    if-eq p1, v1, :cond_d

    const/16 v1, 0x4c

    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x56

    if-eq p1, v1, :cond_d

    const/16 v1, 0x49

    if-eq p1, v1, :cond_d

    const/16 v1, 0x4a

    if-eq p1, v1, :cond_d

    const/16 v1, 0x53

    if-eq p1, v1, :cond_d

    const/16 v1, 0x54

    if-eq p1, v1, :cond_1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_d

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 249
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 173
    :cond_0
    invoke-virtual {p2}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitArrayType()Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result p0

    return p0

    .line 177
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 178
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    add-int/2addr p1, v3

    return p1

    :cond_2
    const/4 p1, 0x0

    move v4, p1

    move v5, v4

    :goto_0
    move v1, v0

    :goto_1
    add-int/lit8 v6, v0, 0x1

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_9

    if-ne v7, v2, :cond_3

    goto :goto_4

    :cond_3
    const/16 v8, 0x3c

    if-ne v7, v8, :cond_8

    .line 216
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_4

    .line 218
    invoke-virtual {p2, v0}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_2

    .line 220
    :cond_4
    invoke-virtual {p2, v0}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    :goto_2
    move v0, v6

    .line 224
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3e

    if-eq v4, v6, :cond_7

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_6

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_5

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_5

    const/16 v4, 0x3d

    .line 240
    invoke-virtual {p2, v4}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 236
    invoke-virtual {p2, v4}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object v4

    .line 235
    invoke-static {p0, v0, v4}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 229
    invoke-virtual {p2}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitTypeArgument()V

    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_1

    :cond_8
    move v0, v6

    goto :goto_1

    :cond_9
    :goto_4
    if-nez v4, :cond_b

    .line 196
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_a

    .line 198
    invoke-virtual {p2, v0}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_5

    .line 200
    :cond_a
    invoke-virtual {p2, v0}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    :cond_b
    :goto_5
    if-ne v7, v2, :cond_c

    .line 206
    invoke-virtual {p2}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitEnd()V

    return v6

    :cond_c
    move v4, p1

    move v5, v3

    move v0, v6

    goto :goto_0

    .line 168
    :cond_d
    :pswitch_0
    invoke-virtual {p2, p1}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitBaseType(C)V

    return v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lorg/mvel2/asm/signature/SignatureVisitor;)V
    .locals 6

    .line 64
    iget-object v0, p0, Lorg/mvel2/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_4

    const/4 v2, 0x2

    :cond_0
    const/16 v3, 0x3a

    .line 78
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v2, v2, -0x1

    .line 80
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p1, v2}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x4c

    if-eq v2, v5, :cond_1

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_1

    const/16 v5, 0x54

    if-ne v2, v5, :cond_2

    .line 87
    :cond_1
    invoke-virtual {p1}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitClassBound()Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result v4

    :cond_2
    :goto_0
    add-int/lit8 v2, v4, 0x1

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_3

    .line 93
    invoke-virtual {p1}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitInterfaceBound()Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result v4

    goto :goto_0

    :cond_3
    const/16 v3, 0x3e

    if-ne v4, v3, :cond_0

    .line 108
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 110
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_5

    .line 111
    invoke-virtual {p1}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitParameterType()Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 114
    invoke-virtual {p1}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitReturnType()Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result v2

    :goto_2
    if-ge v2, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 117
    invoke-virtual {p1}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitExceptionType()Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_2

    .line 122
    :cond_6
    invoke-virtual {p1}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitSuperclass()Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result v2

    :goto_3
    if-ge v2, v1, :cond_7

    .line 124
    invoke-virtual {p1}, Lorg/mvel2/asm/signature/SignatureVisitor;->visitInterface()Lorg/mvel2/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_3

    :cond_7
    return-void
.end method

.method public acceptType(Lorg/mvel2/asm/signature/SignatureVisitor;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/mvel2/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/mvel2/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILorg/mvel2/asm/signature/SignatureVisitor;)I

    return-void
.end method
