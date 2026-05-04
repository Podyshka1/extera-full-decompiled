.class public final synthetic Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda2;->f$1:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/Weather;->$r8$lambda$CZOxXJ_I3KL3TfHMZrHQm5ccq8M(Lorg/telegram/messenger/Utilities$Callback;ZLjava/lang/Boolean;)V

    return-void
.end method
