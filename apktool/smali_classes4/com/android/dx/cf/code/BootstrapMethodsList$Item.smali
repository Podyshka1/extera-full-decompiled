.class public Lcom/android/dx/cf/code/BootstrapMethodsList$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/cf/code/BootstrapMethodsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final bootstrapMethodArgumentsList:Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;

.field private final bootstrapMethodHandle:Lcom/android/dx/rop/cst/CstMethodHandle;

.field private final declaringClass:Lcom/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstMethodHandle;Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 123
    iput-object p2, p0, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodHandle:Lcom/android/dx/rop/cst/CstMethodHandle;

    .line 124
    iput-object p3, p0, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodArgumentsList:Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;

    .line 125
    iput-object p1, p0, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->declaringClass:Lcom/android/dx/rop/cst/CstType;

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bootstrapMethodArguments == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bootstrapMethodHandle == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "declaringClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBootstrapMethodArguments()Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodArgumentsList:Lcom/android/dx/cf/code/BootstrapMethodArgumentsList;

    return-object v0
.end method

.method public getBootstrapMethodHandle()Lcom/android/dx/rop/cst/CstMethodHandle;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodHandle:Lcom/android/dx/rop/cst/CstMethodHandle;

    return-object v0
.end method

.method public getDeclaringClass()Lcom/android/dx/rop/cst/CstType;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/dx/cf/code/BootstrapMethodsList$Item;->declaringClass:Lcom/android/dx/rop/cst/CstType;

    return-object v0
.end method
