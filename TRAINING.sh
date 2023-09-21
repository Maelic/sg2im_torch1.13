python scripts/train.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 16 --print_every 10000 --checkpoint_every 20000 --include_relationships 1 --image_size 256,256 --output_dir ./checkpoints --num_iterations 500000

python scripts/sample_images.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 38 --image_size 128,128 --save_gt_imgs 1 --checkpoint /home/maelic/sg2im_torch1.13/checkpoints/checkpoints_baseline/checkpoint_with_model.pt --num_samples 50000 --output_dir /home/maelic/sg2im_torch1.13/outputs/baseline

python scripts/sample_images.py --dataset vg --vg_image_dir /home/maelic/Documents/PhD/Datasets/VisualGenome/VG_100K --batch_size 38 --image_size 128,128 --save_gt_imgs 1 --checkpoint /home/maelic/sg2im_torch1.13/checkpoints/checkpoints_curated/checkpoint_with_model.pt --num_samples 50000 --output_dir /home/maelic/sg2im_torch1.13/outputs/curated


python -m pytorch_fid /home/maelic/sg2im_torch1.13/outputs/curated/images_gt /home/maelic/sg2im_torch1.13/outputs/curated/images