.class public final synthetic Lorg/telegram/messenger/FileLog$ANRDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLog$ANRDetector;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLog$ANRDetector;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLog$ANRDetector$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/FileLog$ANRDetector;

    iput-object p2, p0, Lorg/telegram/messenger/FileLog$ANRDetector$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/FileLog$ANRDetector$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/FileLog$ANRDetector;

    iget-object v1, p0, Lorg/telegram/messenger/FileLog$ANRDetector$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog$ANRDetector;->$r8$lambda$7Tg5J5C8Jj1nGHA3bGbh0dgrTFw(Lorg/telegram/messenger/FileLog$ANRDetector;Ljava/lang/Runnable;)V

    return-void
.end method
