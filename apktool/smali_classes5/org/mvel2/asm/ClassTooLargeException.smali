.class public final Lorg/mvel2/asm/ClassTooLargeException;
.super Ljava/lang/IndexOutOfBoundsException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x23af9fecf3bf67dL


# instance fields
.field private final className:Ljava/lang/String;

.field private final constantPoolCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lorg/mvel2/asm/ClassTooLargeException;->className:Ljava/lang/String;

    .line 52
    iput p2, p0, Lorg/mvel2/asm/ClassTooLargeException;->constantPoolCount:I

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/mvel2/asm/ClassTooLargeException;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getConstantPoolCount()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/mvel2/asm/ClassTooLargeException;->constantPoolCount:I

    return v0
.end method
