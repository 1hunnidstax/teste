.class Lcom/inmobi/ads/ae$7;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/av;

.field final synthetic b:Lcom/inmobi/ads/ae;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/av;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/inmobi/ads/ae$7;->b:Lcom/inmobi/ads/ae;

    iput-object p2, p0, Lcom/inmobi/ads/ae$7;->a:Lcom/inmobi/ads/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;)V
    .locals 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/inmobi/ads/ae$7;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/inmobi/ads/ae$9;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 347
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ae$7;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/aw;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ae;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling onVideoPrepared event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 351
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 357
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/ae$7;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ae$7;->a:Lcom/inmobi/ads/av;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/aw;->a(Lcom/inmobi/ads/av;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 358
    :catch_1
    move-exception v0

    .line 359
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ae;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling onVideoPlayed event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 367
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/ads/ae$7;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ae$7;->a:Lcom/inmobi/ads/av;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/aw;->b(Lcom/inmobi/ads/av;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 368
    :catch_2
    move-exception v0

    .line 369
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ae;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling onVideoPaused event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 377
    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/ads/ae$7;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ae$7;->a:Lcom/inmobi/ads/av;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/aw;->c(Lcom/inmobi/ads/av;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 378
    :catch_3
    move-exception v0

    .line 379
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ae;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling onVideoResumed event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
