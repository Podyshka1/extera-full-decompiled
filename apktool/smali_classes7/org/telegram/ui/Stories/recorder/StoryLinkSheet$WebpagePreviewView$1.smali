.class Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView$1;
.super Lorg/telegram/ui/Components/CircularProgressDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;FFI)V
    .locals 0

    .line 446
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$WebpagePreviewView;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(FFI)V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41d00000    # 26.0f

    .line 449
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41d00000    # 26.0f

    .line 454
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method
