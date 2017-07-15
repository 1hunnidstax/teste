.class Lcom/moat/analytics/mobile/inm/v;
.super Lcom/moat/analytics/mobile/inm/MoatFactory;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/moat/analytics/mobile/inm/ao;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/moat/analytics/mobile/inm/bg;

.field private final b:Lcom/moat/analytics/mobile/inm/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/inm/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/inm/MoatFactory;-><init>()V

    new-instance v0, Lcom/moat/analytics/mobile/inm/bh;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/bh;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/inm/v;->a:Lcom/moat/analytics/mobile/inm/bg;

    sget-object v0, Lcom/moat/analytics/mobile/inm/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/moat/analytics/mobile/inm/am;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/inm/am;-><init>()V

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/inm/ar;

    sget-object v2, Lcom/moat/analytics/mobile/inm/ab;->a:Lcom/moat/analytics/mobile/inm/ab;

    invoke-direct {v0, v2}, Lcom/moat/analytics/mobile/inm/ar;-><init>(Lcom/moat/analytics/mobile/inm/aa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/moat/analytics/mobile/inm/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/moat/analytics/mobile/inm/c;

    sget-object v0, Lcom/moat/analytics/mobile/inm/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/ao;

    invoke-direct {v1, p1, v0}, Lcom/moat/analytics/mobile/inm/c;-><init>(Landroid/app/Activity;Lcom/moat/analytics/mobile/inm/ao;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/inm/v;->b:Lcom/moat/analytics/mobile/inm/a;

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/v;->b:Lcom/moat/analytics/mobile/inm/a;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/a;->b()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;
    .locals 3

    invoke-static {p1}, Lcom/moat/analytics/mobile/inm/base/asserts/a;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/moat/analytics/mobile/inm/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/ao;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/moat/analytics/mobile/inm/y;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/moat/analytics/mobile/inm/y;-><init>(Lcom/moat/analytics/mobile/inm/v;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/inm/ao;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/inm/af;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/inm/af;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/moat/analytics/mobile/inm/ax;->a(Lcom/moat/analytics/mobile/inm/ao;Lcom/moat/analytics/mobile/inm/az;Lcom/moat/analytics/mobile/inm/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/NativeVideoTracker;
    .locals 3

    sget-object v0, Lcom/moat/analytics/mobile/inm/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/ao;

    new-instance v1, Lcom/moat/analytics/mobile/inm/z;

    invoke-direct {v1, p0, v0, p1}, Lcom/moat/analytics/mobile/inm/z;-><init>(Lcom/moat/analytics/mobile/inm/v;Lcom/moat/analytics/mobile/inm/ao;Ljava/lang/String;)V

    new-instance v2, Lcom/moat/analytics/mobile/inm/ah;

    invoke-direct {v2}, Lcom/moat/analytics/mobile/inm/ah;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/moat/analytics/mobile/inm/ax;->a(Lcom/moat/analytics/mobile/inm/ao;Lcom/moat/analytics/mobile/inm/az;Lcom/moat/analytics/mobile/inm/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 3

    invoke-static {p1}, Lcom/moat/analytics/mobile/inm/base/asserts/a;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/moat/analytics/mobile/inm/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/ao;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/moat/analytics/mobile/inm/x;

    invoke-direct {v2, p0, v1, v0}, Lcom/moat/analytics/mobile/inm/x;-><init>(Lcom/moat/analytics/mobile/inm/v;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/inm/ao;)V

    new-instance v1, Lcom/moat/analytics/mobile/inm/bf;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/inm/bf;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/moat/analytics/mobile/inm/ax;->a(Lcom/moat/analytics/mobile/inm/ao;Lcom/moat/analytics/mobile/inm/az;Lcom/moat/analytics/mobile/inm/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/WebAdTracker;

    return-object v0
.end method

.method private a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 3

    invoke-static {p1}, Lcom/moat/analytics/mobile/inm/base/asserts/a;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lcom/moat/analytics/mobile/inm/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/ao;

    new-instance v2, Lcom/moat/analytics/mobile/inm/w;

    invoke-direct {v2, p0, v1, v0}, Lcom/moat/analytics/mobile/inm/w;-><init>(Lcom/moat/analytics/mobile/inm/v;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/inm/ao;)V

    new-instance v1, Lcom/moat/analytics/mobile/inm/bf;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/inm/bf;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/moat/analytics/mobile/inm/ax;->a(Lcom/moat/analytics/mobile/inm/ao;Lcom/moat/analytics/mobile/inm/az;Lcom/moat/analytics/mobile/inm/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/WebAdTracker;

    return-object v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/inm/v;)Lcom/moat/analytics/mobile/inm/a;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/v;->b:Lcom/moat/analytics/mobile/inm/a;

    return-object v0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/inm/v;)Lcom/moat/analytics/mobile/inm/bg;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/v;->a:Lcom/moat/analytics/mobile/inm/bg;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/moat/analytics/mobile/inm/MoatPlugin;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/inm/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/v;->b:Lcom/moat/analytics/mobile/inm/a;

    sget-object v0, Lcom/moat/analytics/mobile/inm/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/ao;

    invoke-interface {p1, v1, v0}, Lcom/moat/analytics/mobile/inm/MoatPlugin;->a(Lcom/moat/analytics/mobile/inm/a;Lcom/moat/analytics/mobile/inm/ao;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createCustomTracker(Lcom/moat/analytics/mobile/inm/MoatPlugin;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/inm/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/inm/v;->a(Lcom/moat/analytics/mobile/inm/MoatPlugin;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    invoke-interface {p1}, Lcom/moat/analytics/mobile/inm/MoatPlugin;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/inm/v;->a(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/inm/ak;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/ak;-><init>()V

    goto :goto_0
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/NativeVideoTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/inm/v;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/NativeVideoTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/inm/al;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/al;-><init>()V

    goto :goto_0
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/inm/v;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/inm/an;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/an;-><init>()V

    goto :goto_0
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/inm/v;->a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/inm/an;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/an;-><init>()V

    goto :goto_0
.end method

.method public createWebDisplayTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/inm/v;->createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/inm/WebAdTracker;

    move-result-object v0

    return-object v0
.end method

.method public createWebDisplayTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/inm/v;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;

    move-result-object v0

    return-object v0
.end method
