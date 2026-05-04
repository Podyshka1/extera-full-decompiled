.class Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter$1;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;Landroid/content/Context;I)V
    .locals 0

    .line 293
    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter$1;->this$1:Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;

    iput p3, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter$1;->val$position:I

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 296
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 297
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const v0, 0x8000

    if-ne p1, v0, :cond_0

    .line 298
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter$1;->this$1:Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter;->this$0:Lorg/telegram/ui/Components/GroupCallRecordAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/GroupCallRecordAlert;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Components/GroupCallRecordAlert;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/GroupCallRecordAlert$Adapter$1;->val$position:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
