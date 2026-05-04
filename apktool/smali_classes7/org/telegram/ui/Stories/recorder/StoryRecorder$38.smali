.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$38;
.super Lorg/telegram/ui/Stories/recorder/CropEditor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createCropEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 7933
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$38;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/CropEditor;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 3

    .line 7936
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$38;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method
