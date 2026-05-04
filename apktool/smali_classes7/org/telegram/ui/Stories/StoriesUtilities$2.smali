.class Lorg/telegram/ui/Stories/StoriesUtilities$2;
.super Lorg/telegram/messenger/ImageReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoriesUtilities;->ensureStoryFileLoaded(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ensureStoryFileLoadedObject:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

.field final synthetic val$runnableRef:[Ljava/lang/Runnable;


# direct methods
.method constructor <init>([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V
    .locals 0

    .line 1177
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$2;->val$runnableRef:[Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$2;->val$ensureStoryFileLoadedObject:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    invoke-direct {p0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z
    .locals 0

    .line 1180
    invoke-super/range {p0 .. p5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    move-result p1

    move-object p2, p0

    .line 1181
    iget-object p3, p2, Lorg/telegram/ui/Stories/StoriesUtilities$2;->val$runnableRef:[Ljava/lang/Runnable;

    const/4 p4, 0x0

    aget-object p3, p3, p4

    if-eqz p3, :cond_0

    .line 1182
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1183
    iget-object p3, p2, Lorg/telegram/ui/Stories/StoriesUtilities$2;->val$ensureStoryFileLoadedObject:Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    iget-object p3, p3, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1185
    :cond_0
    new-instance p3, Lorg/telegram/ui/Stories/StoriesUtilities$2$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$2;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return p1
.end method
