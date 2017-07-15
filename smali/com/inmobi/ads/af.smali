.class public Lcom/inmobi/ads/af;
.super Landroid/media/MediaPlayer;
.source "NativeStrandMediaPlayer.java"


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/inmobi/ads/af;

.field private static f:I


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/inmobi/ads/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/af;->d:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/inmobi/ads/af;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 21
    iput v0, p0, Lcom/inmobi/ads/af;->a:I

    .line 22
    iput v0, p0, Lcom/inmobi/ads/af;->b:I

    return-void
.end method

.method public static a()Lcom/inmobi/ads/af;
    .locals 3

    .prologue
    .line 33
    sget-object v1, Lcom/inmobi/ads/af;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/af;->e:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/inmobi/ads/af;->e:Lcom/inmobi/ads/af;

    .line 36
    iget-object v2, v0, Lcom/inmobi/ads/af;->c:Lcom/inmobi/ads/af;

    sput-object v2, Lcom/inmobi/ads/af;->e:Lcom/inmobi/ads/af;

    .line 37
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/inmobi/ads/af;->c:Lcom/inmobi/ads/af;

    .line 38
    sget v2, Lcom/inmobi/ads/af;->f:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/inmobi/ads/af;->f:I

    .line 39
    monitor-exit v1

    .line 42
    :goto_0
    return-object v0

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    new-instance v0, Lcom/inmobi/ads/af;

    invoke-direct {v0}, Lcom/inmobi/ads/af;-><init>()V

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 69
    sget-object v1, Lcom/inmobi/ads/af;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    sget v0, Lcom/inmobi/ads/af;->f:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 71
    sget-object v0, Lcom/inmobi/ads/af;->e:Lcom/inmobi/ads/af;

    iput-object v0, p0, Lcom/inmobi/ads/af;->c:Lcom/inmobi/ads/af;

    .line 72
    sput-object p0, Lcom/inmobi/ads/af;->e:Lcom/inmobi/ads/af;

    .line 73
    sget v0, Lcom/inmobi/ads/af;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/inmobi/ads/af;->f:I

    .line 75
    :cond_0
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/inmobi/ads/af;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/inmobi/ads/af;->a:I

    .line 47
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/inmobi/ads/af;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/inmobi/ads/af;->b:I

    .line 55
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/inmobi/ads/af;->b:I

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/inmobi/ads/af;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/ads/af;->e()V

    goto :goto_0
.end method
