<?php


namespace app\models;


use Yii;
use yii\base\Model;
use yii\web\UploadedFile;

class PhotoUpload extends Model
{
	public $photo;

	public function rules()
	{
		return [
			[['photo'], 'required'],
			[['photo'], 'file', 'extensions' => 'jpg,png']
		];
	}

	public function uploadFile(UploadedFile $file, $currentImage)
	{
		$this->photo = $file;

		if ($this->validate())
		{
			$this->deleteCurrentPhoto($currentImage);
			return $this->setPhoto();
		}

	}

	private function getFolder()
	{
		return Yii::getAlias('@web') . 'uploads/';
	}

	private function generateFilename()
	{
		return strtolower(md5(uniqid($this->photo->baseName)) . '.' . $this->photo->extension);
	}

	public function deleteCurrentPhoto($currentImage)
	{
		if ($this->fileExists($currentImage))
		{
			unlink($this->getFolder() . $currentImage);
		}
	}

	public function fileExists($currentImage)
	{
		if(!empty($currentImage) and isset($currentImage))
		{
			return file_exists($this->getFolder() . $currentImage);
		}

	}

	public function setPhoto()
	{
		$filename = $this->generateFilename();
		$this->photo->saveAs($this->getFolder() . $filename);
		return $filename;
	}

}