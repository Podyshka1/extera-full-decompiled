.class Lorg/telegram/messenger/voip/VideoCapturerDevice$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VideoCapturerDevice;->init(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VideoCapturerDevice;


# direct methods
.method public static synthetic $r8$lambda$ZQSuWiFDNOs2qmwnLNxKb-4FvRU()V
    .locals 1

    .line 140
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->stopScreenCapture()V

    :cond_0
    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/voip/VideoCapturerDevice;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/telegram/messenger/voip/VideoCapturerDevice$1;->this$0:Lorg/telegram/messenger/voip/VideoCapturerDevice;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .line 139
    new-instance v0, Lorg/telegram/messenger/voip/VideoCapturerDevice$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VideoCapturerDevice$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
