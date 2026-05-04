.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$30;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openPremium()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 7545
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$30;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 7546
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return-void
.end method


# virtual methods
.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 7554
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$30;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetactivity(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 2

    .line 7559
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$30$1;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$30;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$30$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$30;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 7549
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method
