.class public Lorg/telegram/ui/Components/ChatAttachAlert$AttachSearchField;
.super Lorg/telegram/ui/Components/FragmentSearchField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachSearchField"
.end annotation


# instance fields
.field private final parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 6632
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/FragmentSearchField;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 6633
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachSearchField;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 6638
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachSearchField;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    .line 6639
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
