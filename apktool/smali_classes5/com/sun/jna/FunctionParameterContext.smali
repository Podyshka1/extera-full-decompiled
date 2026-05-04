.class public Lcom/sun/jna/FunctionParameterContext;
.super Lcom/sun/jna/ToNativeContext;
.source "SourceFile"


# instance fields
.field private args:[Ljava/lang/Object;

.field private function:Lcom/sun/jna/Function;

.field private index:I


# direct methods
.method constructor <init>(Lcom/sun/jna/Function;[Ljava/lang/Object;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sun/jna/FunctionParameterContext;->function:Lcom/sun/jna/Function;

    .line 35
    iput-object p2, p0, Lcom/sun/jna/FunctionParameterContext;->args:[Ljava/lang/Object;

    .line 36
    iput p3, p0, Lcom/sun/jna/FunctionParameterContext;->index:I

    return-void
.end method


# virtual methods
.method public getFunction()Lcom/sun/jna/Function;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sun/jna/FunctionParameterContext;->function:Lcom/sun/jna/Function;

    return-object v0
.end method

.method public getParameterIndex()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/sun/jna/FunctionParameterContext;->index:I

    return v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sun/jna/FunctionParameterContext;->args:[Ljava/lang/Object;

    return-object v0
.end method
