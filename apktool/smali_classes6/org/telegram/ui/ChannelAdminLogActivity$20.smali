.class Lorg/telegram/ui/ChannelAdminLogActivity$20;
.super Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->loadAdmins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 2347
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$20;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;-><init>()V

    return-void
.end method
