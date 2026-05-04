.class Lorg/telegram/ui/GroupCallActivity$11;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    .line 3600
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$11;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 5

    .line 3603
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/4 v1, 0x6

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3604
    :goto_0
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$11;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersVideoGridStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v3

    if-lt p1, v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$11;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersVideoGridEndRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v3

    if-ge p1, v3, :cond_7

    .line 3606
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$11;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersVideoGridEndRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$11;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersVideoGridStartRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 3607
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$11;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->-$$Nest$fgetusersVideoGridEndRow(Lorg/telegram/ui/GroupCallActivity$ListAdapter;)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne p1, v3, :cond_3

    .line 3608
    sget-boolean p1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz p1, :cond_2

    :cond_1
    move p1, v2

    goto :goto_1

    .line 3610
    :cond_2
    rem-int/lit8 p1, v0, 0x2

    if-nez p1, :cond_1

    :cond_3
    move p1, v4

    .line 3616
    :goto_1
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v3, :cond_6

    if-ne v0, v4, :cond_4

    return v1

    :cond_4
    if-ne v0, v2, :cond_5

    const/4 p1, 0x3

    return p1

    :cond_5
    return v2

    :cond_6
    return p1

    :cond_7
    return v0
.end method
