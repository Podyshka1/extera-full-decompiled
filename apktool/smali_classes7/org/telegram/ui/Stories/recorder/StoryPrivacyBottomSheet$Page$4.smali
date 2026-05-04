.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateSearchFieldTop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)V
    .locals 0

    .line 1581
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$4;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1584
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$4;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->-$$Nest$fputsearchTranslationAnimating(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Z)V

    return-void
.end method
