.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;
.super Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromAvatarImage(Lorg/telegram/ui/ProfileActivity$AvatarImageView;Z)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;->val$avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;-><init>()V

    return-void
.end method


# virtual methods
.method protected hide()V
    .locals 2

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;->val$avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    .line 298
    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method protected show(Z)V
    .locals 1

    .line 291
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;->val$avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    .line 292
    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method
