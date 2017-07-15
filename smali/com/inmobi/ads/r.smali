.class Lcom/inmobi/ads/r;
.super Lcom/inmobi/ads/bm;
.source "IasTrackedNativeV2VideoAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/r$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/inmobi/ads/ViewableAd;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/integralads/avid/library/inmobi/session/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/inmobi/ads/r$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/inmobi/ads/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/inmobi/ads/at;Lcom/integralads/avid/library/inmobi/session/e;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ViewableAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/at;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/integralads/avid/library/inmobi/session/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p3}, Lcom/inmobi/ads/bm;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/r;->c:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p2, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    .line 39
    iput-object p4, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    .line 40
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending volumeChange to IAS AdSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    .line 134
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with volume - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/integralads/avid/library/inmobi/g/a;->a(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onVolumeChange with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    new-instance v0, Lcom/inmobi/ads/r$a;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/inmobi/ads/r$a;-><init>(Landroid/content/Context;Lcom/inmobi/ads/r;)V

    iput-object v0, p0, Lcom/inmobi/ads/r;->f:Lcom/inmobi/ads/r$a;

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inmobi/ads/r;->f:Lcom/inmobi/ads/r$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/r;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/inmobi/ads/r;->a(I)V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/ads/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 125
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/r;->f:Lcom/inmobi/ads/r$a;

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/r;->f:Lcom/inmobi/ads/r$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 149
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending event ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to IAS AdSession : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    .line 151
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v2, Lcom/inmobi/ads/r$1;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 217
    :goto_1
    return-void

    .line 154
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->k()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :try_start_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onAdEvent with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_1

    .line 157
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->c_()V

    .line 158
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->e_()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    throw v0

    .line 161
    :pswitch_2
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->l()V

    goto :goto_0

    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->p()V

    goto :goto_0

    .line 167
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->h()V

    goto :goto_0

    .line 170
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->i()V

    goto/16 :goto_0

    .line 173
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->j()V

    goto/16 :goto_0

    .line 176
    :pswitch_7
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->b_()V

    goto/16 :goto_0

    .line 179
    :pswitch_8
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->f()V

    .line 180
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->e()V

    goto/16 :goto_0

    .line 183
    :pswitch_9
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->o()V

    goto/16 :goto_0

    .line 187
    :pswitch_a
    iget-object v2, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v3

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    if-ne v2, p1, :cond_1

    move v2, v1

    .line 188
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 187
    invoke-interface {v3, v2}, Lcom/integralads/avid/library/inmobi/g/a;->a(Ljava/lang/Integer;)V

    .line 190
    iget-object v2, p0, Lcom/inmobi/ads/r;->f:Lcom/inmobi/ads/r$a;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/inmobi/ads/r;->f:Lcom/inmobi/ads/r$a;

    sget-object v3, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    if-ne v3, p1, :cond_3

    :goto_3
    invoke-static {v2, v0}, Lcom/inmobi/ads/r$a;->a(Lcom/inmobi/ads/r$a;Z)Z

    goto/16 :goto_0

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/inmobi/ads/r;->f:Lcom/inmobi/ads/r$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/inmobi/ads/r;->f:Lcom/inmobi/ads/r$a;

    .line 189
    invoke-virtual {v2}, Lcom/inmobi/ads/r$a;->a()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    move v0, v1

    .line 191
    goto :goto_3

    .line 195
    :pswitch_b
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->m()V

    .line 196
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->q()V

    goto/16 :goto_0

    .line 199
    :pswitch_c
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->r()V

    .line 200
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->n()V

    goto/16 :goto_0

    .line 203
    :pswitch_d
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    const-string v1, "Unknown Player error"

    invoke-interface {v0, v1}, Lcom/integralads/avid/library/inmobi/g/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :pswitch_e
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/g/a;->g()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public varargs a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V
    .locals 5
    .param p1    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 65
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/inmobi/ads/c$h;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/inmobi/ads/r;->e()Lcom/inmobi/ads/AdContainer;

    move-result-object v1

    instance-of v1, v1, Lcom/inmobi/ads/at;

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/inmobi/ads/r;->e()Lcom/inmobi/ads/AdContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getVideoContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 69
    if-eqz v1, :cond_3

    .line 70
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/inmobi/ads/r;->g:Ljava/lang/ref/WeakReference;

    .line 73
    if-eqz p2, :cond_0

    .line 74
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p2, v1

    .line 75
    iget-object v4, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v4, v3}, Lcom/integralads/avid/library/inmobi/session/e;->b(Landroid/view/View;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    iget-object v1, p0, Lcom/inmobi/ads/r;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/integralads/avid/library/inmobi/session/e;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 80
    iget-object v1, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/e;->c()Lcom/integralads/avid/library/inmobi/c/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/e;->c()Lcom/integralads/avid/library/inmobi/c/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/integralads/avid/library/inmobi/c/a;->a_()V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/e;->d()Lcom/integralads/avid/library/inmobi/g/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/integralads/avid/library/inmobi/g/a;->d_()V

    .line 86
    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/ads/r;->a(Landroid/app/Activity;)V

    .line 87
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    const-string v2, "Registered ad view with AVID video ad session"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    .line 98
    :goto_1
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in startTrackingForImpression with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    throw v0
.end method

.method public b()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    iget-object v0, p0, Lcom/inmobi/ads/r;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/session/e;->a(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->b()V

    .line 105
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistered VideoView to IAS AdSession : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/r;->e:Lcom/integralads/avid/library/inmobi/session/e;

    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/inmobi/ads/r;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    .line 115
    :goto_1
    return-void

    .line 103
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/r;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopTrackingForImpression with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->c()V

    throw v0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 221
    invoke-super {p0}, Lcom/inmobi/ads/bm;->d()V

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 224
    iget-object v0, p0, Lcom/inmobi/ads/r;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/inmobi/ads/r;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 227
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/r;->f:Lcom/inmobi/ads/r$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 235
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/r;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in destroy with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    iget-object v0, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/r;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->d()V

    throw v0
.end method
