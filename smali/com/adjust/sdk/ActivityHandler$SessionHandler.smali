.class final Lcom/adjust/sdk/ActivityHandler$SessionHandler;
.super Landroid/os/Handler;
.source "ActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/ActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionHandler"
.end annotation


# static fields
.field private static final BASE_ADDRESS:I = 0x11bb6

.field private static final DEEP_LINK:I = 0x11bbc

.field private static final END:I = 0x11bb9

.field private static final EVENT:I = 0x11bba

.field private static final FINISH_TRACKING:I = 0x11bbb

.field private static final INIT:I = 0x11bb7

.field private static final SEND_REFERRER:I = 0x11bbd

.field private static final START:I = 0x11bb8

.field private static final TIMER_FIRED:I = 0x11bbf

.field private static final UPDATE_STATUS:I = 0x11bbe


# instance fields
.field private final sessionHandlerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/ActivityHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Lcom/adjust/sdk/ActivityHandler;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sessionHandler"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 348
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sessionHandlerReference:Ljava/lang/ref/WeakReference;

    .line 349
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 355
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sessionHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adjust/sdk/ActivityHandler;

    .line 356
    .local v3, "sessionHandler":Lcom/adjust/sdk/ActivityHandler;
    if-nez v3, :cond_0

    .line 393
    :goto_0
    return-void

    .line 360
    :cond_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 362
    :pswitch_0
    # invokes: Lcom/adjust/sdk/ActivityHandler;->initInternal()V
    invoke-static {v3}, Lcom/adjust/sdk/ActivityHandler;->access$200(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 365
    :pswitch_1
    # invokes: Lcom/adjust/sdk/ActivityHandler;->startInternal()V
    invoke-static {v3}, Lcom/adjust/sdk/ActivityHandler;->access$300(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 368
    :pswitch_2
    # invokes: Lcom/adjust/sdk/ActivityHandler;->endInternal()V
    invoke-static {v3}, Lcom/adjust/sdk/ActivityHandler;->access$400(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 371
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/adjust/sdk/AdjustEvent;

    .line 372
    .local v0, "event":Lcom/adjust/sdk/AdjustEvent;
    # invokes: Lcom/adjust/sdk/ActivityHandler;->trackEventInternal(Lcom/adjust/sdk/AdjustEvent;)V
    invoke-static {v3, v0}, Lcom/adjust/sdk/ActivityHandler;->access$500(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0

    .line 375
    .end local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 376
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    # invokes: Lcom/adjust/sdk/ActivityHandler;->finishedTrackingActivityInternal(Lorg/json/JSONObject;)V
    invoke-static {v3, v1}, Lcom/adjust/sdk/ActivityHandler;->access$600(Lcom/adjust/sdk/ActivityHandler;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 379
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;

    .line 380
    .local v4, "urlClickTime":Lcom/adjust/sdk/ActivityHandler$UrlClickTime;
    iget-object v5, v4, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;->url:Landroid/net/Uri;

    iget-wide v6, v4, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;->clickTime:J

    # invokes: Lcom/adjust/sdk/ActivityHandler;->readOpenUrlInternal(Landroid/net/Uri;J)V
    invoke-static {v3, v5, v6, v7}, Lcom/adjust/sdk/ActivityHandler;->access$700(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V

    goto :goto_0

    .line 383
    .end local v4    # "urlClickTime":Lcom/adjust/sdk/ActivityHandler$UrlClickTime;
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;

    .line 384
    .local v2, "referrerClickTime":Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;
    iget-object v5, v2, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;->referrer:Ljava/lang/String;

    iget-wide v6, v2, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;->clickTime:J

    # invokes: Lcom/adjust/sdk/ActivityHandler;->sendReferrerInternal(Ljava/lang/String;J)V
    invoke-static {v3, v5, v6, v7}, Lcom/adjust/sdk/ActivityHandler;->access$800(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V

    goto :goto_0

    .line 387
    .end local v2    # "referrerClickTime":Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;
    :pswitch_7
    # invokes: Lcom/adjust/sdk/ActivityHandler;->updateStatusInternal()V
    invoke-static {v3}, Lcom/adjust/sdk/ActivityHandler;->access$900(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 390
    :pswitch_8
    # invokes: Lcom/adjust/sdk/ActivityHandler;->timerFiredInternal()V
    invoke-static {v3}, Lcom/adjust/sdk/ActivityHandler;->access$1000(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x11bb7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
