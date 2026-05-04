.class Lorg/telegram/ui/ActionBar/ActionBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;

.field final synthetic val$ignoreTitles:Z

.field final synthetic val$viewsToHide:Ljava/util/ArrayList;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;Ljava/util/ArrayList;ZZ)V
    .locals 0

    .line 1159
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->val$viewsToHide:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->val$visible:Z

    iput-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->val$ignoreTitles:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    .line 1162
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->val$viewsToHide:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1163
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->val$viewsToHide:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1164
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->val$visible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    .line 1165
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    .line 1166
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1168
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->val$visible:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->val$ignoreTitles:Z

    if-nez v0, :cond_3

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-eqz p1, :cond_3

    .line 1177
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgetavatarSearchImageView(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1182
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->val$visible:Z

    if-nez p1, :cond_4

    .line 1183
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$4;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgetavatarSearchImageView(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
