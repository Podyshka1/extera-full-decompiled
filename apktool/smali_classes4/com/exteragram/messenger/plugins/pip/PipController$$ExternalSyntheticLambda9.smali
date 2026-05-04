.class public final synthetic Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->$r8$lambda$7CZkhP2Pq3JYvkGUBl8vqtaliPk(B)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
