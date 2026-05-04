.class public final synthetic Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    iput-object p3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->$r8$lambda$_vWnaAd9NwW4wiZk1iniRQMbo0I(Lorg/telegram/ui/Components/DialogsChannelsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
