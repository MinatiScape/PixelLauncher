.class public LR1/H;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field public final b:Landroid/graphics/Bitmap;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Point;

.field public final e:Lcom/android/quickstep/AnimatedFloat;

.field public final f:Ljava/lang/Runnable;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lcom/android/quickstep/AnimatedFloat;

    new-instance v0, LR1/G;

    invoke-direct {v0, p0}, LR1/G;-><init>(LR1/H;)V

    invoke-direct {p1, v0}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, LR1/H;->e:Lcom/android/quickstep/AnimatedFloat;

    .line 4
    iput-object p2, p0, LR1/H;->b:Landroid/graphics/Bitmap;

    .line 5
    iput-object p3, p0, LR1/H;->d:Landroid/graphics/Point;

    .line 6
    iput-object p4, p0, LR1/H;->f:Ljava/lang/Runnable;

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, LR1/H;->c:Landroid/graphics/Paint;

    .line 8
    new-instance p2, Landroid/graphics/BlurMaskFilter;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/launcher3/R$dimen;->wallpaper_reveal_blur_radius:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sget-object p3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, p0, p3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 11
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;Ljava/lang/Runnable;LR1/F;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LR1/H;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Point;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(LR1/H;)Lcom/android/quickstep/AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, LR1/H;->e:Lcom/android/quickstep/AnimatedFloat;

    return-object p0
.end method

.method public static synthetic b(LR1/H;)Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, LR1/H;->d:Landroid/graphics/Point;

    return-object p0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/high16 v0, -0x1000000

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    iget-object v0, p0, LR1/H;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3
    iget-boolean v0, p0, LR1/H;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LR1/H;->g:Z

    .line 5
    iget-object v0, p0, LR1/H;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    iget-object v0, p0, LR1/H;->d:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, LR1/H;->e:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object p0, p0, LR1/H;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
