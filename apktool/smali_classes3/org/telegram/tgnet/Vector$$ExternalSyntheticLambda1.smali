.class public final synthetic Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/InputSerializedData;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/InputSerializedData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/InputSerializedData;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/InputSerializedData;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
