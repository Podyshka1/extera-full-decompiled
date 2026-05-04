.class public final Lcom/android/dx/cf/attrib/AttSignature;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "SourceFile"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Signature"


# instance fields
.field private final signature:Lcom/android/dx/rop/cst/CstString;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstString;)V
    .locals 1

    .line 37
    const-string v0, "Signature"

    invoke-direct {p0, v0}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/android/dx/cf/attrib/AttSignature;->signature:Lcom/android/dx/rop/cst/CstString;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "signature == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getSignature()Lcom/android/dx/rop/cst/CstString;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttSignature;->signature:Lcom/android/dx/rop/cst/CstString;

    return-object v0
.end method
