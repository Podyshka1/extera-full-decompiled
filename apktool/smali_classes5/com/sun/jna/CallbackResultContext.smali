.class public Lcom/sun/jna/CallbackResultContext;
.super Lcom/sun/jna/ToNativeContext;
.source "SourceFile"


# instance fields
.field private method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sun/jna/CallbackResultContext;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sun/jna/CallbackResultContext;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method
