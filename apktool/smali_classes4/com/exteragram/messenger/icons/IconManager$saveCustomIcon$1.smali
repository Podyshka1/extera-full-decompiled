.class final Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/icons/IconManager;->saveCustomIcon(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $originalName:Ljava/lang/String;

.field final synthetic $packToEdit:Lcom/exteragram/messenger/icons/IconPack;

.field final synthetic $resId:I

.field final synthetic $resourceName:Ljava/lang/String;

.field final synthetic $tempFile:Ljava/io/File;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/icons/IconPack;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$tempFile:Ljava/io/File;

    iput-object p2, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$resourceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$originalName:Ljava/lang/String;

    iput-object p4, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    iput p5, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$resId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;

    iget-object v1, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$tempFile:Ljava/io/File;

    iget-object v2, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$resourceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$originalName:Ljava/lang/String;

    iget-object v4, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    iget v5, p0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$resId:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/icons/IconPack;ILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 282
    iget v2, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$5:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lcom/exteragram/messenger/icons/IconPack;

    iget-object v1, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v1, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget-object v1, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 283
    iget-object v2, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$tempFile:Ljava/io/File;

    invoke-static {v2}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 285
    iget-object v4, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$resourceName:Ljava/lang/String;

    .line 286
    iget-object v5, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$originalName:Ljava/lang/String;

    const/16 v6, 0x2e

    if-eqz v5, :cond_4

    .line 287
    invoke-static {v5}, Lcom/exteragram/messenger/export/output/FileManager;->fileNameFromUserString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v3}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/16 v8, 0x2e

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 291
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    .line 293
    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v4, "substring(...)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v7

    goto :goto_0

    .line 299
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 302
    :cond_5
    :goto_0
    new-instance v6, Ljava/io/File;

    sget-object v11, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    invoke-virtual {v11}, Lcom/exteragram/messenger/icons/IconPackStorage;->getIconPacksDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v8}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 304
    :cond_6
    iget-object v5, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$tempFile:Ljava/io/File;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 305
    iget-object v5, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$tempFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 307
    iget-object v5, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v5}, Lcom/exteragram/messenger/icons/IconPack;->getIcons()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 308
    iget-object v7, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$resourceName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v12, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    const/16 v20, 0x6f

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v5

    invoke-static/range {v12 .. v21}, Lcom/exteragram/messenger/icons/IconPack;->copy$default(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/util/SparseIntArray;Ljava/io/File;ILjava/lang/Object;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v5

    .line 310
    invoke-virtual {v11, v5}, Lcom/exteragram/messenger/icons/IconPackStorage;->saveIconPackMetadata(Lcom/exteragram/messenger/icons/IconPack;)V

    .line 312
    sget-object v7, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getAbsolutePath(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$resId:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/exteragram/messenger/icons/IconManager;->createBitmapFromFile(Ljava/lang/String;IILandroid/content/res/Resources$Theme;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 314
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    new-instance v22, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;

    iget v8, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$resId:I

    iget-object v9, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->$packToEdit:Lcom/exteragram/messenger/icons/IconPack;

    const/16 v27, 0x0

    move-object/from16 v26, v5

    move/from16 v24, v8

    move-object/from16 v25, v9

    invoke-direct/range {v22 .. v27}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$1;-><init>(Landroid/graphics/Bitmap;ILcom/exteragram/messenger/icons/IconPack;Lcom/exteragram/messenger/icons/IconPack;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v5, v22

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$2:Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$4:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;->label:I

    invoke-static {v7, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    .line 330
    :cond_7
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
