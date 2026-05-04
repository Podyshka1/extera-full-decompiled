.class public final synthetic Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/DialogsBotsAdapter;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_contacts_search;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/DialogsBotsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->$r8$lambda$-lPnGXR2_L2Gc6pwDKZ337kYb4Q(Lorg/telegram/ui/Components/DialogsBotsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
