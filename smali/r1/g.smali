.class public final synthetic Lr1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;


# instance fields
.field public final synthetic b:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/g;->b:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    return-void
.end method


# virtual methods
.method public final onSlideInViewClosed()V
    .locals 0

    iget-object p0, p0, Lr1/g;->b:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->d(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    return-void
.end method
