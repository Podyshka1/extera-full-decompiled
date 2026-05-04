.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public final synthetic f$1:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda43;->f$0:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda43;->f$1:Lorg/telegram/ui/Components/NumberPicker;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda43;->f$0:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda43;->f$1:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$E7fi1al48wrfWToE5dfnifIKeqQ(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
