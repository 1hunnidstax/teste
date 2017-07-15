.class abstract Lcom/inmobi/ads/NativeStrandViewFactory$c;
.super Ljava/lang/Object;
.source "NativeStrandViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/inmobi/ads/NativeStrandViewFactory;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->b:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a:Ljava/util/LinkedList;

    .line 166
    iput v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->c:I

    .line 167
    iput v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->d:I

    .line 168
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method protected abstract a(Landroid/content/Context;)Landroid/view/View;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public a(Landroid/content/Context;Lcom/inmobi/ads/NativeV2Asset;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 201
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->b:Lcom/inmobi/ads/NativeStrandViewFactory;

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeStrandViewFactory;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 203
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->c:I

    .line 205
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 212
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 213
    return-object v0

    .line 207
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->d:I

    .line 208
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 210
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->b:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-static {v1}, Lcom/inmobi/ads/NativeStrandViewFactory;->b(Lcom/inmobi/ads/NativeStrandViewFactory;)I

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 158
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->k()Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 178
    invoke-static {p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->b(Landroid/view/View;)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->b:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeStrandViewFactory;)I

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 234
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Miss Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hit Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
