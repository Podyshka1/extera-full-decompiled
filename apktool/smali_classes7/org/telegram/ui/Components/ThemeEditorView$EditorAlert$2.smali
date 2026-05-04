.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iput-object p3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->val$this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(FF)Z
    .locals 1

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$2;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)I

    move-result p1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
