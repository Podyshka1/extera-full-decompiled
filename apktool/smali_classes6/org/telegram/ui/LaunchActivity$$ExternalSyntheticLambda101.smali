.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda101;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda101;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda101;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda101;->f$2:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda101;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda101;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda101;->f$2:Ljava/lang/Long;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$HQTZDlfytSVjp4LlGSoGjwXSxLs(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;Ljava/lang/Long;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method
