.class Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationSetupActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetignoreTextChange(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1158
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1159
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgeteditTextFirstRow(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x31

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-lez v0, :cond_3

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgeteditTextFirstRow(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v3

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v5

    if-eq p1, v0, :cond_a

    .line 1163
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1164
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    .line 1165
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void

    .line 1168
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v3

    if-eq p1, v0, :cond_a

    .line 1169
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v6

    if-eq p1, v0, :cond_2

    .line 1170
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1171
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1172
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    .line 1173
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void

    .line 1175
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result p1

    if-ge p1, v4, :cond_a

    .line 1176
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    return-void

    .line 1182
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgeteditTextFirstRow(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v5

    if-ne p1, v0, :cond_6

    .line 1183
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1184
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    .line 1185
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void

    .line 1187
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v6

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v6

    if-eq p1, v0, :cond_7

    .line 1189
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1190
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    aget-object p1, p1, v6

    invoke-virtual {p1, v4, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 1192
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void

    .line 1195
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 1197
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgeteditTextFirstRow(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgeteditTextFirstRow(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetanimationDrawables(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)[Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/high16 v1, 0x430e0000    # 142.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x41900000    # 18.0f

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1199
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetimageView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1201
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 1203
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 1204
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_a

    .line 1205
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$13;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Z)V

    :cond_a
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
