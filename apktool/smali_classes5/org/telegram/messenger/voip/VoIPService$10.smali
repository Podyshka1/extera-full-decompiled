.class Lorg/telegram/messenger/voip/VoIPService$10;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 4672
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 4675
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->-$$Nest$mcheckUpdateBluetoothHeadset(Lorg/telegram/messenger/voip/VoIPService;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 4680
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->-$$Nest$mcheckUpdateBluetoothHeadset(Lorg/telegram/messenger/voip/VoIPService;)V

    return-void
.end method
