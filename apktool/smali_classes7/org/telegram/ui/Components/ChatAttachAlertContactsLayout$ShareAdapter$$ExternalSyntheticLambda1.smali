.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->$r8$lambda$CI_yKwj_ZEXkV2sijw1B0VX0k9c(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
