.class Lorg/telegram/ui/ProfileActivity$AvatarImageView$1;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity$AvatarImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 968
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)Ljava/lang/Float;
    .locals 0

    .line 976
    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->-$$Nest$fgetcrossfadeProgress(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 968
    check-cast p1, Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView$1;->get(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 968
    check-cast p1, Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$AvatarImageView$1;->setValue(Lorg/telegram/ui/ProfileActivity$AvatarImageView;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/ProfileActivity$AvatarImageView;F)V
    .locals 0

    .line 971
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setCrossfadeProgress(F)V

    return-void
.end method
