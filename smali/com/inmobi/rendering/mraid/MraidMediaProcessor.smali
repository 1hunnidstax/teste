.class public final Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
.super Ljava/lang/Object;
.source "MraidMediaProcessor.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/rendering/RenderView;

.field private c:Lcom/inmobi/rendering/mraid/d;

.field private d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

.field private e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

.field private f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/mraid/d;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireDeviceVolumeChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireDeviceMuteChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireHeadphonePluggedEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/d;->b()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    .line 176
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 190
    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    .line 193
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 108
    new-instance v0, Lcom/inmobi/rendering/mraid/d;

    invoke-direct {v0, p2}, Lcom/inmobi/rendering/mraid/d;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    .line 109
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v0, p1}, Lcom/inmobi/rendering/mraid/d;->a(Ljava/lang/String;)V

    .line 112
    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v2, v1}, Lcom/inmobi/rendering/mraid/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 125
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/d;->a(Landroid/view/ViewGroup;)V

    .line 130
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/d;->requestFocus()Z

    .line 131
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$2;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$2;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/d;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 142
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/d;->a(Lcom/inmobi/rendering/mraid/d$b;)V

    .line 168
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/d;->a()V

    .line 169
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 209
    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    .line 212
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    .line 185
    :goto_0
    return v1

    .line 184
    :cond_0
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 185
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 200
    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 241
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 242
    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    .line 245
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 218
    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    goto :goto_0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 227
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 229
    :goto_0
    return v0

    .line 228
    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 229
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    .line 236
    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 237
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 252
    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    goto :goto_0
.end method
