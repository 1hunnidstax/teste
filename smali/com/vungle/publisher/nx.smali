.class public final Lcom/vungle/publisher/nx;
.super Lcom/vungle/publisher/oa;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/nx$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Lcom/vungle/publisher/lr;

.field c:Lcom/vungle/publisher/ql;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/vungle/publisher/oa;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vungle/publisher/nx;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/nx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vungle/publisher/nx;->d:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/nx;Lcom/vungle/publisher/lr;)Lcom/vungle/publisher/lr;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vungle/publisher/nx;->b:Lcom/vungle/publisher/lr;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/nx;Lcom/vungle/publisher/ql;)Lcom/vungle/publisher/ql;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vungle/publisher/nx;->c:Lcom/vungle/publisher/ql;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/nx;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/vungle/publisher/nx;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/vungle/publisher/nx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vungle/publisher/nx;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method final a(Z)V
    .locals 3

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/nx;->c:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ay;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vungle/publisher/ay;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/nx;->c:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ay;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/vungle/publisher/ay;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vungle/publisher/nx;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/nx;->b:Lcom/vungle/publisher/lr;

    invoke-virtual {v0}, Lcom/vungle/publisher/lr;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/vungle/publisher/nx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/nx;->e:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/nx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/nx;->d:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method final setAndCacheSoundEnabled(Z)V
    .locals 0
    .param p1, "isSoundEnabled"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/vungle/publisher/nx;->a:Z

    .line 71
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/nx;->setSoundEnabled(Z)V

    .line 72
    return-void
.end method

.method final setSoundEnabled(Z)V
    .locals 1
    .param p1, "isSoundEnabled"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/nx;->b:Lcom/vungle/publisher/lr;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/lr;->a(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/vungle/publisher/nx;->b()V

    .line 77
    return-void
.end method

.method final setVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/nx;->b:Lcom/vungle/publisher/lr;

    iget-object v0, v0, Lcom/vungle/publisher/lr;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 85
    invoke-virtual {p0}, Lcom/vungle/publisher/nx;->b()V

    .line 86
    return-void
.end method
