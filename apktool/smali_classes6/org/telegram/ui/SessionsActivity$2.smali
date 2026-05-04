.class Lorg/telegram/ui/SessionsActivity$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity;Landroid/content/Context;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$2;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->-$$Nest$fgetterminateAllSessionsRow(Lorg/telegram/ui/SessionsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 210
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
