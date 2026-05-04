.class public final synthetic Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/TranslateAlert2;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/TranslateAlert2;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2;->$r8$lambda$To-1t_cnbWxgehmPB3tDGb0QF0g(Lorg/telegram/ui/Components/TranslateAlert2;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
