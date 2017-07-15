.class Lcom/inmobi/rendering/a$a;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private final d:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/a$a;->d:Ljava/lang/Boolean;

    .line 600
    iput-object p1, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    .line 601
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/a$a;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/a$a;)I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/inmobi/rendering/a$a;->a:I

    return v0
.end method

.method static synthetic c(Lcom/inmobi/rendering/a$a;)I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/inmobi/rendering/a$a;->b:I

    return v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/a$a;->a:I

    .line 607
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/a$a;->b:I

    .line 609
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 615
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/a$a;->d:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 617
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :goto_1
    return-void

    .line 612
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/rendering/a$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in JavaScriptBridge$1.onGlobalLayout(); "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 621
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 617
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method
