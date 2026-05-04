.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$28$1;
.super Lorg/telegram/ui/WrappedResourceProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder$28;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$28;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$28;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 7490
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$28$1;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$28;

    invoke-direct {p0, p2}, Lorg/telegram/ui/WrappedResourceProvider;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public appendColors()V
    .locals 3

    .line 7493
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const v2, -0xe0e0e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 7494
    iget-object v0, p0, Lorg/telegram/ui/WrappedResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const v2, -0xcccccd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method
